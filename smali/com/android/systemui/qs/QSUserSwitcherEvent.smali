.class public final enum Lcom/android/systemui/qs/QSUserSwitcherEvent;
.super Ljava/lang/Enum;
.source "QSEvents.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSUserSwitcherEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_DETAIL_CLOSE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_DETAIL_OPEN:Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_MORE_SETTINGS:Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/qs/QSUserSwitcherEvent;

    new-instance v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v2, "QS_USER_SWITCH"

    const/4 v3, 0x0

    const/16 v4, 0x1a8

    .line 112
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v2, "QS_USER_DETAIL_OPEN"

    const/4 v3, 0x1

    const/16 v4, 0x1a9

    .line 115
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_OPEN:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v2, "QS_USER_DETAIL_CLOSE"

    const/4 v3, 0x2

    const/16 v4, 0x1aa

    .line 118
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_CLOSE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v2, "QS_USER_MORE_SETTINGS"

    const/4 v3, 0x3

    const/16 v4, 0x1ab

    .line 121
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_MORE_SETTINGS:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->$VALUES:[Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSUserSwitcherEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSUserSwitcherEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->$VALUES:[Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSUserSwitcherEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->_id:I

    return p0
.end method
