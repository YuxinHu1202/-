target triple = "x86_64-pc-linux-gnu"

; 定义全局变量len为5
@len = global i32 5

; 定义全局变量数组shuzu，长度为5
@shuzu = global [5 x double] zeroinitializer, align 8

; 寻找最大值函数
define double @MaxFunc() {
entry:
  ; 获取shuzu[0]的值
  %0 = load double, double* getelementptr ([5 x double], [5 x double]* @shuzu, i32 0, i32 0), align 8

  ; 将shuzu[0]的值存储到max变量中
  %max = alloca double, align 8
  store double %0, double* %max, align 8

  ; 初始化循环变量
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4

  br label %loop_condition

loop_condition:
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %loop_body, label %loop_end

loop_body:
  ; 获取 shuzu[i] 的值
  %index = load i32, i32* %i, align 4
  %ptr = getelementptr [5 x double], [5 x double]* @shuzu, i32 0, i32 %index
  %value = load double, double* %ptr, align 8

  ; 加载当前最大值
  %max_val = load double, double* %max, align 8

  ; 比较并更新最大值
  %cmp_max = fcmp olt double %max_val, %value
  br i1 %cmp_max, label %update_max, label %skip_update

update_max:
  store double %value, double* %max, align 8
  br label %skip_update

skip_update:
  %i_val = load i32, i32* %i, align 4
  %i_next = add i32 %i_val, 1
  store i32 %i_next, i32* %i, align 4
  br label %loop_condition

loop_end:
  ; 返回最大值
  %final_max = load double, double* %max, align 8
  ret double %final_max
}

; main函数
define i32 @main() {
entry:
  ; 初始化循环变量
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4

  br label %input_condition

input_condition:
  %i_val = load i32, i32* %i, align 4
  %cmp_input = icmp slt i32 %i_val, 5
  br i1 %cmp_input, label %read_input, label %print_max

read_input:
  ; 获取 shuzu[i] 的地址
  %ptr_input = getelementptr inbounds [5 x double], [5 x double]* @shuzu, i32 0, i32 %i_val

  ; 从标准输入读取值到 shuzu[i]
  call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %ptr_input)

  ; i + 1
  %i_next = add i32 %i_val, 1
  store i32 %i_next, i32* %i, align 4

  br label %input_condition

print_max:
  ; 调用 MaxFunc 获取最大值
  %max_result = call double @MaxFunc()
  ; 打印最大值
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8],[5 x i8]* @.str1,i32 0,i32 0), double %max_result)

  ; 返回 0
  ret i32 0
}

; 函数声明
declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

