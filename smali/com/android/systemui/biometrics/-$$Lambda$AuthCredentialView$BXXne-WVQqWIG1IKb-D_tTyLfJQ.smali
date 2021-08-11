.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$AuthCredentialView$BXXne-WVQqWIG1IKb-D_tTyLfJQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthCredentialView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthCredentialView$BXXne-WVQqWIG1IKb-D_tTyLfJQ;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthCredentialView$BXXne-WVQqWIG1IKb-D_tTyLfJQ;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthCredentialView;->lambda$showNowWipingDialog$1$AuthCredentialView(Landroid/content/DialogInterface;)V

    return-void
.end method
