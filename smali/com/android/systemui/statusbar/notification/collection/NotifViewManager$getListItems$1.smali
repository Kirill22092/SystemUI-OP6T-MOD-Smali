.class final Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotifViewManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->getListItems(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $container:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$1;->$container:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$1;->$container:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$1;->invoke(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
