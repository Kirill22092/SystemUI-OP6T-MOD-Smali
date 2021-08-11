.class final Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$sam$com_android_systemui_statusbar_NotificationRemoveInterceptor$0;
.super Ljava/lang/Object;
.source "ForegroundServiceSectionController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function3;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$sam$com_android_systemui_statusbar_NotificationRemoveInterceptor$0;->function:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final synthetic onNotificationRemoveRequested(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$sam$com_android_systemui_statusbar_NotificationRemoveInterceptor$0;->function:Lkotlin/jvm/functions/Function3;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "invoke(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
