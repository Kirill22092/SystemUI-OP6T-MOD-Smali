.class public final Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LightSourceDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/LightSourceDrawable;->setActive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/media/LightSourceDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/LightSourceDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    .line 101
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 108
    iget-boolean p1, p0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;->cancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-static {p1}, Lcom/android/systemui/media/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/LightSourceDrawable;)Lcom/android/systemui/media/RippleData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/RippleData;->setProgress(F)V

    .line 112
    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-static {p1}, Lcom/android/systemui/media/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/LightSourceDrawable;)Lcom/android/systemui/media/RippleData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/RippleData;->setAlpha(F)V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/media/LightSourceDrawable;->access$setRippleAnimation$p(Lcom/android/systemui/media/LightSourceDrawable;Landroid/animation/Animator;)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
