.class final Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "IlluminationDrawable.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/IlluminationDrawable;->animateBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIlluminationDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlluminationDrawable.kt\ncom/android/systemui/media/IlluminationDrawable$animateBackground$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,179:1\n1591#2,2:180\n*E\n*S KotlinDebug\n*F\n+ 1 IlluminationDrawable.kt\ncom/android/systemui/media/IlluminationDrawable$animateBackground$1$1\n*L\n155#1,2:180\n*E\n"
.end annotation


# instance fields
.field final synthetic $finalHighlight$inlined:I

.field final synthetic $initialBackground$inlined:I

.field final synthetic $initialHighlight$inlined:I

.field final synthetic this$0:Lcom/android/systemui/media/IlluminationDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/IlluminationDrawable;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/IlluminationDrawable;

    iput p2, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->$initialBackground$inlined:I

    iput p3, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->$initialHighlight$inlined:I

    iput p4, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->$finalHighlight$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "it"

    .line 152
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/IlluminationDrawable;

    invoke-static {v0}, Lcom/android/systemui/media/IlluminationDrawable;->access$getPaint$p(Lcom/android/systemui/media/IlluminationDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->$initialBackground$inlined:I

    iget-object v2, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/IlluminationDrawable;

    invoke-static {v2}, Lcom/android/systemui/media/IlluminationDrawable;->access$getBackgroundColor$p(Lcom/android/systemui/media/IlluminationDrawable;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/IlluminationDrawable;

    iget v1, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->$initialHighlight$inlined:I

    iget v2, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->$finalHighlight$inlined:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->access$setHighlightColor$p(Lcom/android/systemui/media/IlluminationDrawable;I)V

    .line 155
    iget-object p1, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/IlluminationDrawable;

    invoke-static {p1}, Lcom/android/systemui/media/IlluminationDrawable;->access$getLightSources$p(Lcom/android/systemui/media/IlluminationDrawable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/LightSourceDrawable;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/IlluminationDrawable;

    invoke-static {v1}, Lcom/android/systemui/media/IlluminationDrawable;->access$getHighlightColor$p(Lcom/android/systemui/media/IlluminationDrawable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/LightSourceDrawable;->setHighlightColor(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/IlluminationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 152
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
