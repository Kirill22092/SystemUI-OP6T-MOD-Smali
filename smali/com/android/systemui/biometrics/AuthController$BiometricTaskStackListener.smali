.class public Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;
.super Landroid/app/TaskStackListener;
.source "AuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BiometricTaskStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/AuthController;->access$100(Lcom/android/systemui/biometrics/AuthController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthController;->access$000(Lcom/android/systemui/biometrics/AuthController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
