.class Lcom/android/systemui/bubbles/BubbleExpandedView$2;
.super Landroid/view/ViewOutlineProvider;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleExpandedView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$900(Lcom/android/systemui/bubbles/BubbleExpandedView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
