.class final enum Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;
.super Ljava/lang/Enum;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ToggleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

.field public static final enum Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

.field public static final enum On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

.field public static final enum TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

.field public static final enum TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;


# instance fields
.field private final mInTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1837
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    .line 1838
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    const-string v1, "TurningOn"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    .line 1839
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    const-string v1, "TurningOff"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    .line 1840
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    const-string v1, "On"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    .line 1836
    sget-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1844
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1845
    iput-boolean p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->mInTransition:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;
    .locals 1

    .line 1836
    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;
    .locals 1

    .line 1836
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .locals 0

    .line 1849
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->mInTransition:Z

    return p0
.end method
