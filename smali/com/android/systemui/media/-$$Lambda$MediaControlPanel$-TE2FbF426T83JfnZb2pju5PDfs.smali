.class public final synthetic Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$-TE2FbF426T83JfnZb2pju5PDfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Lcom/android/systemui/media/MediaData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$-TE2FbF426T83JfnZb2pju5PDfs;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$-TE2FbF426T83JfnZb2pju5PDfs;->f$1:Lcom/android/systemui/media/MediaData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$-TE2FbF426T83JfnZb2pju5PDfs;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$-TE2FbF426T83JfnZb2pju5PDfs;->f$1:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$1$MediaControlPanel(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method
