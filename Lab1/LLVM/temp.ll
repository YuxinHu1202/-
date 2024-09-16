target triple = "x86_64-pc-linux-gnu"
define i32 @main() {
entry:
  %0 = alloca i32,align 4
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %2)
  %4 = load float, float* %2, align 4
  %5 = fpext float %4 to double
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str1, i64 0, i64 0), double %5)

  ret i32 0
}

; 函数声明
declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

