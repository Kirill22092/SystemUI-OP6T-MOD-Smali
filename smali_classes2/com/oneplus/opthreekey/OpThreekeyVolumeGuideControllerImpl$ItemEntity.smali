.class Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;
.super Ljava/lang/Object;
.source "OpThreekeyVolumeGuideControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemEntity"
.end annotation


# instance fields
.field darkResId:I

.field msgId:I

.field nameId:I

.field resId:I

.field type:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->nameId:I

    .line 451
    iput p2, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->msgId:I

    .line 452
    iput p3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->resId:I

    .line 453
    iput p4, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->darkResId:I

    .line 454
    iput p5, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->type:I

    return-void
.end method
