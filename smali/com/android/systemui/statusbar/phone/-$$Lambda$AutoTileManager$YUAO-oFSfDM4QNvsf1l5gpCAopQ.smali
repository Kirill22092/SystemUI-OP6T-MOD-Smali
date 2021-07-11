.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$YUAO-oFSfDM4QNvsf1l5gpCAopQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$YUAO-oFSfDM4QNvsf1l5gpCAopQ;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$YUAO-oFSfDM4QNvsf1l5gpCAopQ;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$YUAO-oFSfDM4QNvsf1l5gpCAopQ;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$YUAO-oFSfDM4QNvsf1l5gpCAopQ;->f$1:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->lambda$changeUser$0$AutoTileManager(Landroid/os/UserHandle;)V

    return-void
.end method
