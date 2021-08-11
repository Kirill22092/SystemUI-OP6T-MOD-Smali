.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$1GZPv7QA0z8r97QhKE685hmdwXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$1GZPv7QA0z8r97QhKE685hmdwXU;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$1GZPv7QA0z8r97QhKE685hmdwXU;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$5;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;->lambda$onCastDevicesChanged$0$AutoTileManager$5()V

    return-void
.end method
