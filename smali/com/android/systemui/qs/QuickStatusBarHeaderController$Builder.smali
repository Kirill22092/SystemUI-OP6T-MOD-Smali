.class public Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mQSCarrierGroupControllerBuilder:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

.field private mView:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;->mQSCarrierGroupControllerBuilder:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/qs/QuickStatusBarHeaderController;
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;->mView:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;->mQSCarrierGroupControllerBuilder:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;)V

    return-object v0
.end method

.method public setQuickStatusBarHeader(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;->mView:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method
