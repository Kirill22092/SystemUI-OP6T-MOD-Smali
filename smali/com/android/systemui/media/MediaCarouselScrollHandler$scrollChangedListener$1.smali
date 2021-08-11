.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getPlayerWidthPlusPadding()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getScrollView$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/media/MediaScrollView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getRelativeScrollX()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getPlayerWidthPlusPadding()I

    move-result p3

    div-int p3, p1, p3

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getPlayerWidthPlusPadding()I

    move-result p0

    rem-int/2addr p1, p0

    invoke-static {p2, p3, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$onMediaScrollingChanged(Lcom/android/systemui/media/MediaCarouselScrollHandler;II)V

    return-void
.end method
