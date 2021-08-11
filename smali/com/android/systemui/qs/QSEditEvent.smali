.class public final enum Lcom/android/systemui/qs/QSEditEvent;
.super Ljava/lang/Enum;
.source "QSEvents.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSEditEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/qs/QSEditEvent;

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const-string v2, "QS_EDIT_REMOVE"

    const/4 v3, 0x0

    const/16 v4, 0xd2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const-string v2, "QS_EDIT_ADD"

    const/4 v3, 0x1

    const/16 v4, 0xd3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const-string v2, "QS_EDIT_MOVE"

    const/4 v3, 0x2

    const/16 v4, 0xd4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const-string v2, "QS_EDIT_OPEN"

    const/4 v3, 0x3

    const/16 v4, 0xd5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const-string v2, "QS_EDIT_CLOSED"

    const/4 v3, 0x4

    const/16 v4, 0xd6

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const-string v2, "QS_EDIT_RESET"

    const/4 v3, 0x5

    const/16 v4, 0xd7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/qs/QSEditEvent;->$VALUES:[Lcom/android/systemui/qs/QSEditEvent;

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

    iput p3, p0, Lcom/android/systemui/qs/QSEditEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSEditEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSEditEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSEditEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSEditEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->$VALUES:[Lcom/android/systemui/qs/QSEditEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSEditEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSEditEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSEditEvent;->_id:I

    return p0
.end method
