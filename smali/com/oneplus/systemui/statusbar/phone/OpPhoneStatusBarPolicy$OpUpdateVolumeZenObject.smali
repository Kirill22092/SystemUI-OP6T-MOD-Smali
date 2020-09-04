.class public Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;
.super Ljava/lang/Object;
.source "OpPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpUpdateVolumeZenObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

.field public volumeDescription:Ljava/lang/String;

.field public volumeIconId:I

.field public volumeVisible:Z

.field public zenDescription:Ljava/lang/String;

.field public zenIconId:I

.field public zenVisible:Z


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;ZILjava/lang/String;ZILjava/lang/String;)V
    .locals 1

    .line 481
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 473
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenVisible:Z

    .line 474
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenIconId:I

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenDescription:Ljava/lang/String;

    .line 477
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeVisible:Z

    .line 478
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeIconId:I

    .line 479
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeDescription:Ljava/lang/String;

    .line 482
    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenVisible:Z

    .line 483
    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenIconId:I

    .line 484
    iput-object p4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenDescription:Ljava/lang/String;

    .line 485
    iput-boolean p5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeVisible:Z

    .line 486
    iput p6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeIconId:I

    .line 487
    iput-object p7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeDescription:Ljava/lang/String;

    return-void
.end method
