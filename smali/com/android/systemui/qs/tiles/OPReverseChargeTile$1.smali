.class Lcom/android/systemui/qs/tiles/OPReverseChargeTile$1;
.super Landroid/os/Handler;
.source "OPReverseChargeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/OPReverseChargeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Landroid/os/Looper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$1;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 61
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$1;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$002(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Z)Z

    return-void
.end method
