.class public interface abstract Lcom/android/systemui/controls/management/ControlsListingController;
.super Ljava/lang/Object;
.source "ControlsListingController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/util/UserAwareController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;",
        ">;",
        "Lcom/android/systemui/util/UserAwareController;"
    }
.end annotation


# virtual methods
.method public abstract getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
