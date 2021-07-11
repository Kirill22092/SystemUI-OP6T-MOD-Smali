.class public interface abstract Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
.super Ljava/lang/Object;
.source "ControlsListingController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/ControlsListingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControlsListingCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onServicesUpdated(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation
.end method
