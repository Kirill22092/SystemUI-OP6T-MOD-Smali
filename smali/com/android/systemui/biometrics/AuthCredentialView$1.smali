.class Lcom/android/systemui/biometrics/AuthCredentialView$1;
.super Ljava/lang/Object;
.source "AuthCredentialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthCredentialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthCredentialView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView$1;->this$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$1;->this$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
