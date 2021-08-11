.class public Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;
    }
.end annotation


# instance fields
.field private final mView:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mView:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mView:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    return-void
.end method
