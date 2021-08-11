.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field public final synthetic f$1:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

.field public final synthetic f$2:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$1:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$2:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$1:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$2:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->lambda$dismissOrMaximizeDocked$0$WindowManagerProxy(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V

    return-void
.end method
