.class public final synthetic Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$hrbddZ1-8Mr3EF0WaK5GAsQc9Ds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Landroid/media/session/MediaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$hrbddZ1-8Mr3EF0WaK5GAsQc9Ds;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$hrbddZ1-8Mr3EF0WaK5GAsQc9Ds;->f$1:Landroid/media/session/MediaController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$hrbddZ1-8Mr3EF0WaK5GAsQc9Ds;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$hrbddZ1-8Mr3EF0WaK5GAsQc9Ds;->f$1:Landroid/media/session/MediaController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$3$MediaControlPanel(Landroid/media/session/MediaController;)V

    return-void
.end method
