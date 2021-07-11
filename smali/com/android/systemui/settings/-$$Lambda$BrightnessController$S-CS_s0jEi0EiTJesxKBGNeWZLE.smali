.class public final synthetic Lcom/android/systemui/settings/-$$Lambda$BrightnessController$S-CS_s0jEi0EiTJesxKBGNeWZLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$S-CS_s0jEi0EiTJesxKBGNeWZLE;->f$0:Lcom/android/systemui/settings/BrightnessController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$S-CS_s0jEi0EiTJesxKBGNeWZLE;->f$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->lambda$animateSliderTo$1$BrightnessController(Landroid/animation/ValueAnimator;)V

    return-void
.end method
