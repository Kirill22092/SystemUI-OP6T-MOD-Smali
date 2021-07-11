.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConversationState"
.end annotation


# instance fields
.field private final notification:Landroid/app/Notification;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unreadCount:I


# direct methods
.method public constructor <init>(ILandroid/app/Notification;)V
    .locals 1
    .param p2    # Landroid/app/Notification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;ILandroid/app/Notification;ILjava/lang/Object;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->copy(ILandroid/app/Notification;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ILandroid/app/Notification;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;
    .locals 0
    .param p2    # Landroid/app/Notification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "notification"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;-><init>(ILandroid/app/Notification;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    iget v1, p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getNotification()Landroid/app/Notification;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    return-object p0
.end method

.method public final getUnreadCount()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationState(unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
