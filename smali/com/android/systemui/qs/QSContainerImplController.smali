.class public Lcom/android/systemui/qs/QSContainerImplController;
.super Ljava/lang/Object;
.source "QSContainerImplController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSContainerImplController$Builder;
    }
.end annotation


# instance fields
.field private final mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

.field private final mView:Lcom/android/systemui/qs/QSContainerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mView:Lcom/android/systemui/qs/QSContainerImpl;

    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;->setQuickStatusBarHeader(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;->build()Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;Lcom/android/systemui/qs/QSContainerImplController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSContainerImplController;-><init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setListening(Z)V

    return-void
.end method
