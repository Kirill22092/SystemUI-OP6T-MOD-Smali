.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MediaCarouselScrollHandler.kt"


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

    .line 146
    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 162
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getFalsingProtectionNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getFalsingManager$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationStartDismissing()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 152
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p0, p3, p4}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$onFling(Lcom/android/systemui/media/MediaCarouselScrollHandler;FF)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 159
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p4

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p4
.end method
