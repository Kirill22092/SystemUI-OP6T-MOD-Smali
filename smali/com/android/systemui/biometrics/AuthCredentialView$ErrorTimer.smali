.class public Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;
.super Landroid/os/CountDownTimer;
.source "AuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthCredentialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ErrorTimer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mErrorView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLandroid/widget/TextView;)V
    .locals 0

    .line 113
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 114
    iput-object p6, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 120
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 121
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->biometric_dialog_credential_too_many_attempts:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
