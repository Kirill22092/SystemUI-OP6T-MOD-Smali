.class public Lcom/android/systemui/qs/QSContainerImplController$Builder;
.super Ljava/lang/Object;
.source "QSContainerImplController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSContainerImplController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mQuickStatusBarHeaderControllerBuilder:Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;

.field private mView:Lcom/android/systemui/qs/QSContainerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController$Builder;->mQuickStatusBarHeaderControllerBuilder:Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/qs/QSContainerImplController;
    .locals 3

    .line 54
    new-instance v0, Lcom/android/systemui/qs/QSContainerImplController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController$Builder;->mView:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController$Builder;->mQuickStatusBarHeaderControllerBuilder:Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/qs/QSContainerImplController;-><init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;Lcom/android/systemui/qs/QSContainerImplController$1;)V

    return-object v0
.end method

.method public setQSContainerImpl(Lcom/android/systemui/qs/QSContainerImpl;)Lcom/android/systemui/qs/QSContainerImplController$Builder;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController$Builder;->mView:Lcom/android/systemui/qs/QSContainerImpl;

    return-object p0
.end method
