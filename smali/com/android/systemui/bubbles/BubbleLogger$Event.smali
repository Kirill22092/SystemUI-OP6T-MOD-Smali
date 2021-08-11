.class public final enum Lcom/android/systemui/bubbles/BubbleLogger$Event;
.super Ljava/lang/Enum;
.source "BubbleLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bubbles/BubbleLogger$Event;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_BLOCKED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/systemui/bubbles/BubbleLogger$Event;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_ADD_USER_GESTURE"

    const/4 v2, 0x0

    const/16 v3, 0x1e3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_ADD_AGED"

    const/4 v3, 0x1

    const/16 v4, 0x1e4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_REMOVE_MAX_REACHED"

    const/4 v4, 0x2

    const/16 v5, 0x1e5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_REMOVE_CANCEL"

    const/4 v5, 0x3

    const/16 v6, 0x1e6

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL"

    const/4 v6, 0x4

    const/16 v7, 0x1e7

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE"

    const/4 v7, 0x5

    const/16 v8, 0x1e8

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK"

    const/4 v8, 0x6

    const/16 v9, 0x1e9

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const-string v1, "BUBBLE_OVERFLOW_REMOVE_BLOCKED"

    const/4 v9, 0x7

    const/16 v10, 0x1ea

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BLOCKED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/systemui/bubbles/BubbleLogger$Event;

    sget-object v10, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    aput-object v10, v1, v2

    sget-object v2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/systemui/bubbles/BubbleLogger$Event;->$VALUES:[Lcom/android/systemui/bubbles/BubbleLogger$Event;

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

    iput p3, p0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bubbles/BubbleLogger$Event;
    .locals 1

    const-class v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleLogger$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bubbles/BubbleLogger$Event;
    .locals 1

    sget-object v0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->$VALUES:[Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-virtual {v0}, [Lcom/android/systemui/bubbles/BubbleLogger$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bubbles/BubbleLogger$Event;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleLogger$Event;->mId:I

    return p0
.end method
