.class final enum Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;
.super Ljava/lang/Enum;
.source "BadgedImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BadgedImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SuppressionFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

.field public static final enum BEHIND_STACK:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

.field public static final enum FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    new-instance v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    const-string v1, "FLYOUT_VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    .line 55
    new-instance v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    const-string v1, "BEHIND_STACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    .line 51
    sget-object v4, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->$VALUES:[Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;
    .locals 1

    .line 51
    const-class v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->$VALUES:[Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v0}, [Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    return-object v0
.end method
