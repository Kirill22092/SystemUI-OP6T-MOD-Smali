.class Lcom/android/systemui/media/MediaControlPanel$1;
.super Landroid/view/ViewOutlineProvider;
.source "MediaControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaControlPanel;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaControlPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/MediaControlPanel;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/MediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/MediaControlPanel;->access$000(Lcom/android/systemui/media/MediaControlPanel;)I

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/MediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/MediaControlPanel;->access$000(Lcom/android/systemui/media/MediaControlPanel;)I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/MediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/MediaControlPanel;->access$100(Lcom/android/systemui/media/MediaControlPanel;)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
