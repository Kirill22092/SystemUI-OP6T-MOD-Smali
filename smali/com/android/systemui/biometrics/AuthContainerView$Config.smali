.class Lcom/android/systemui/biometrics/AuthContainerView$Config;
.super Ljava/lang/Object;
.source "AuthContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field mBiometricPromptBundle:Landroid/os/Bundle;

.field mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

.field mContext:Landroid/content/Context;

.field mModalityMask:I

.field mOpPackageName:Ljava/lang/String;

.field mOperationId:J

.field mRequireConfirmation:Z

.field mSkipIntro:Z

.field mSysUiSessionId:I

.field mUserId:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
