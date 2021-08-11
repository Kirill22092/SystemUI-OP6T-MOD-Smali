.class Lcom/oneplus/battery/OpNewWarpChargingView$17;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpNewWarpChargingView;->prepareAsset(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpNewWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$17;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$17;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1300(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v2

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$17;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1700(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1800(Lcom/oneplus/battery/OpNewWarpChargingView;IIIZZ)V

    iget-object v6, p0, Lcom/oneplus/battery/OpNewWarpChargingView$17;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v6}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2600(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v8

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1800(Lcom/oneplus/battery/OpNewWarpChargingView;IIIZZ)V

    return-void
.end method
