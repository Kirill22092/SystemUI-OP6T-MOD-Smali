.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$bUxMWJPKQYxZ29Sl7YhLi_sbYZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthCredentialPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialPasswordView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$bUxMWJPKQYxZ29Sl7YhLi_sbYZU;->f$0:Lcom/android/systemui/biometrics/AuthCredentialPasswordView;

    return-void
.end method


# virtual methods
.method public final onVerified([BI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$bUxMWJPKQYxZ29Sl7YhLi_sbYZU;->f$0:Lcom/android/systemui/biometrics/AuthCredentialPasswordView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->onCredentialVerified([BI)V

    return-void
.end method
