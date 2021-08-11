.class final Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotifViewManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->detachRows(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;->invoke(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)Z
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->isBlockingHelperShowing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
