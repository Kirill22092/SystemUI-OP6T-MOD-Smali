.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$NITDpz2-CemnJIsSGRaKPYHZqW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthBiometricView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$NITDpz2-CemnJIsSGRaKPYHZqW4;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$NITDpz2-CemnJIsSGRaKPYHZqW4;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$6(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
