.class Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$1;
.super Ljava/lang/Object;
.source "OpHighlightHintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->playBreathingAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->access$002(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;I)I

    .line 339
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
