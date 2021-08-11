.class final enum Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;
.super Ljava/lang/Enum;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NotificationPanelEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

.field public static final enum DISMISS_ALL_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

.field public static final enum DISMISS_SILENT_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

.field public static final enum INVALID:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->INVALID:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    const-string v1, "DISMISS_ALL_NOTIFICATIONS_PANEL"

    const/4 v3, 0x1

    const/16 v4, 0x138

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->DISMISS_ALL_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    const-string v1, "DISMISS_SILENT_NOTIFICATIONS_PANEL"

    const/4 v4, 0x2

    const/16 v5, 0x13a

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->DISMISS_SILENT_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->INVALID:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->DISMISS_ALL_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->mId:I

    return-void
.end method

.method public static fromSelection(I)Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->DISMISS_ALL_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->DISMISS_SILENT_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->INVALID:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->mId:I

    return p0
.end method
