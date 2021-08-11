.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$2$aKs9haH_6r0xP_BBV2VFTNLlSTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$2$aKs9haH_6r0xP_BBV2VFTNLlSTM;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$2$aKs9haH_6r0xP_BBV2VFTNLlSTM;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->lambda$onDataSaverChanged$0$AutoTileManager$2()V

    return-void
.end method
