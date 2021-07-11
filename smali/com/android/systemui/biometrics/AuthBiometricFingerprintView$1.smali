.class Lcom/android/systemui/biometrics/AuthBiometricFingerprintView$1;
.super Ljava/lang/Object;
.source "AuthBiometricFingerprintView.java"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthBiometricView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->needWrap(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)Lcom/android/systemui/biometrics/AuthBiometricView$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

.field final synthetic val$callback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView$1;->val$callback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->access$000(Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;)V

    .line 297
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView$1;->val$callback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method
