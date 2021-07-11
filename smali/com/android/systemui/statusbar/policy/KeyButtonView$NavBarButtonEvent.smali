.class public final enum Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;
.super Ljava/lang/Enum;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavBarButtonEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

.field public static final enum NONE:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const-string v1, "NAVBAR_HOME_BUTTON_TAP"

    const/4 v2, 0x0

    const/16 v3, 0x215

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const-string v1, "NAVBAR_BACK_BUTTON_TAP"

    const/4 v3, 0x1

    const/16 v4, 0x216

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const-string v1, "NAVBAR_OVERVIEW_BUTTON_TAP"

    const/4 v4, 0x2

    const/16 v5, 0x217

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const-string v1, "NAVBAR_HOME_BUTTON_LONGPRESS"

    const/4 v5, 0x3

    const/16 v6, 0x218

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const-string v1, "NAVBAR_BACK_BUTTON_LONGPRESS"

    const/4 v6, 0x4

    const/16 v7, 0x219

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const-string v1, "NAVBAR_OVERVIEW_BUTTON_LONGPRESS"

    const/4 v7, 0x5

    const/16 v8, 0x21a

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    .line 133
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const-string v1, "NONE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NONE:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    .line 112
    sget-object v9, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->$VALUES:[Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;
    .locals 1

    .line 112
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;
    .locals 1

    .line 112
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->$VALUES:[Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->mId:I

    return p0
.end method
