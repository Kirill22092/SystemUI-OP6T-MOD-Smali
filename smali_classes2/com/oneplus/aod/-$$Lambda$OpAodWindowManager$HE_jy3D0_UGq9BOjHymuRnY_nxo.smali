.class public final synthetic Lcom/oneplus/aod/-$$Lambda$OpAodWindowManager$HE_jy3D0_UGq9BOjHymuRnY_nxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/aod/OpAodWindowManager;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/-$$Lambda$OpAodWindowManager$HE_jy3D0_UGq9BOjHymuRnY_nxo;->f$0:Lcom/oneplus/aod/OpAodWindowManager;

    iput p2, p0, Lcom/oneplus/aod/-$$Lambda$OpAodWindowManager$HE_jy3D0_UGq9BOjHymuRnY_nxo;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/-$$Lambda$OpAodWindowManager$HE_jy3D0_UGq9BOjHymuRnY_nxo;->f$0:Lcom/oneplus/aod/OpAodWindowManager;

    iget p0, p0, Lcom/oneplus/aod/-$$Lambda$OpAodWindowManager$HE_jy3D0_UGq9BOjHymuRnY_nxo;->f$1:F

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager;->lambda$handleStopDozing$0$OpAodWindowManager(F)V

    return-void
.end method
