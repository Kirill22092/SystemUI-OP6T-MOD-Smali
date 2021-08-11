.class Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;
.super Landroid/os/Handler;
.source "AACHapticUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appaac/haptic/AACHapticUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrationHandler"
.end annotation


# instance fields
.field private amplitudes:[I

.field private duration:[I

.field private envelope:[I

.field private envelopeAlgo:[I

.field private eventNumber:I

.field private hedPattern:Ljava/lang/String;

.field private loopAmplitude:I

.field private loopCount:I

.field private loopInterval:I

.field private nonRichTap:Z

.field private patternDuration:I

.field private signalName:[Ljava/lang/String;

.field private signalType:[I

.field private startTime:[I

.field private strength:[I

.field final synthetic this$0:Lcom/appaac/haptic/AACHapticUtils;

.field private timings:[J

.field private waitResume:Z


# direct methods
.method private constructor <init>(Lcom/appaac/haptic/AACHapticUtils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->patternDuration:I

    const/16 p2, 0x32

    iput p2, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopInterval:I

    const/16 p2, 0xff

    iput p2, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    iput p1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    iput-boolean p1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->nonRichTap:Z

    iput-boolean p1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->waitResume:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/appaac/haptic/AACHapticUtils;Landroid/os/Looper;Lcom/appaac/haptic/AACHapticUtils$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;-><init>(Lcom/appaac/haptic/AACHapticUtils;Landroid/os/Looper;)V

    return-void
.end method

.method private parsePattern(Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->nonRichTap:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->parsePatternOnNonRichTap(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    const/16 v10, 0xc

    invoke-direct {v9, v10}, Ljava/util/Vector;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const-string v15, "VibrationHandler"

    if-ge v11, v2, :cond_d

    :try_start_1
    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v14, "Event"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v14, "EventType"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v1

    const-string v1, "PREBAKED"

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v18, v2

    const-string v2, "Duration"

    const-string v0, "Event "

    move-object/from16 v19, v9

    const-string v9, "RelativeTime"

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :try_start_2
    aput v1, v3, v11

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int v14, v12, v13

    if-ge v1, v14, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": The RelativeTime needs smaller than the sum of startTimeLast and durationLast"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v12

    sub-int/2addr v1, v13

    aput v1, v4, v11

    const-string v1, "SignalName"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "^EFFECT(([1-9])|(1[0-8]?))$"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v1, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v5, v11

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v1, "Strength"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v7

    goto/16 :goto_4

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "amplitude must be between 1 and 100 inclusive (amplitude="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v20, v7

    :goto_3
    move-object/from16 v1, v19

    goto/16 :goto_7

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": SignalName is invalid."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v1, "SINE"

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v7

    const-string v7, ": The RelativeTime of needs smaller than the sum of startTimeLast and durationLast"

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :try_start_3
    aput v1, v3, v11

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int v14, v12, v13

    if-ge v1, v14, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v12

    sub-int/2addr v0, v13

    aput v0, v4, v11

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v5, v11

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    :cond_7
    :goto_4
    move-object/from16 v1, v19

    goto/16 :goto_6

    :cond_8
    const-string v1, "ENVELOPE"

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    aput v1, v3, v11

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int v14, v12, v13

    if-ge v1, v14, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_9
    const-string v1, "AlgoType"

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v12

    sub-int/2addr v7, v13

    aput v7, v4, v11

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v11

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "Points"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_5
    const/4 v7, 0x4

    if-ge v2, v7, :cond_7

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    move v14, v10

    mul-double v9, v21, v23

    double-to-int v9, v9

    const/16 v10, 0x64

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v21, v1

    move-object/from16 v1, v19

    invoke-virtual {v1, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_a

    const/16 v9, 0x32

    if-ge v7, v9, :cond_a

    const/16 v9, 0x1f4

    if-le v7, v9, :cond_a

    const/4 v7, 0x0

    :cond_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x3

    if-ne v2, v7, :cond_b

    move v7, v14

    if-eq v13, v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": the relative time of 4th point must be equal to duration"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    goto :goto_5

    :cond_c
    move-object/from16 v1, v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": Signal type is invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object v9, v1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v7, v20

    goto/16 :goto_0

    :cond_d
    move/from16 v18, v2

    move-object/from16 v20, v7

    move-object v1, v9

    :goto_7
    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->patternDuration:I

    const/16 v2, 0x7530

    if-le v12, v2, :cond_e

    const-string v2, ": Pattern\'s duration needs less than 30000"

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move/from16 v2, v18

    iput v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->eventNumber:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->signalType:[I

    iget v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->eventNumber:I

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->startTime:[I

    iget v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->eventNumber:I

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->duration:[I

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->signalName:[Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->strength:[I

    const/4 v2, 0x0

    :goto_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    iget-object v3, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->strength:[I

    move-object/from16 v4, v20

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v20, v4

    goto :goto_8

    :cond_f
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->envelope:[I

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    iget-object v3, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->envelope:[I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->envelopeAlgo:[I

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->envelopeAlgo:[I

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    iget-object v1, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v1}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    :goto_b
    iget v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->eventNumber:I

    if-ge v10, v2, :cond_14

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->signalType:[I

    aget v2, v2, v10
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, ", "

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->startTime:[I

    aget v2, v2, v10

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->duration:[I

    aget v2, v2, v10

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->signalName:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->strength:[I

    add-int/lit8 v3, v16, 0x1

    aget v2, v2, v16

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v3

    const/4 v5, 0x2

    goto :goto_c

    :cond_12
    const/4 v5, 0x2

    if-ne v2, v5, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->startTime:[I

    aget v2, v2, v10

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->duration:[I

    aget v2, v2, v10

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->envelope:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_c

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->startTime:[I

    aget v2, v2, v10

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->duration:[I

    aget v2, v2, v10

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_d

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_14
    :goto_d
    return-void
.end method

.method private parsePatternOnNonRichTap(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    new-array v4, v3, [J

    iput-object v4, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, "VibrationHandler"

    if-ge v4, v2, :cond_7

    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Event"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "EventType"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "PREBAKED"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, ": The RelativeTime needs smaller than the sum of startTimeLast and durationLast"

    const/16 v12, 0xff

    const-string v13, "Event "

    const-string v14, "Duration"

    const-string v15, "RelativeTime"

    if-eqz v10, :cond_1

    :try_start_2
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int v10, v5, v6

    if-ge v9, v10, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-object v7, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    mul-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v10, v5

    sub-int/2addr v10, v6

    int-to-long v5, v10

    aput-wide v5, v7, v9

    iget-object v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I

    aput v3, v5, v9

    iget-object v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v5, v9

    const-string v5, "Strength"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I

    mul-int/2addr v5, v12

    div-int/lit8 v5, v5, 0x64

    aput v5, v6, v9

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_1
    const-string v10, "SINE"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int v10, v5, v6

    if-ge v9, v10, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    iget-object v7, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    mul-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v10, v5

    sub-int/2addr v10, v6

    int-to-long v5, v10

    aput-wide v5, v7, v9

    iget-object v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I

    aput v3, v5, v9

    iget-object v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v5, v9

    iget-object v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I

    aput v12, v5, v9

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    move v11, v2

    move v9, v4

    move-object v4, v1

    move v1, v5

    move v5, v3

    goto/16 :goto_2

    :cond_3
    const-string v10, "ENVELOPE"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int v10, v5, v6

    if-ge v9, v10, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    iget-object v9, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    mul-int/lit8 v10, v4, 0x2

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v11, v5

    sub-int/2addr v11, v6

    int-to-long v5, v11

    aput-wide v5, v9, v10

    iget-object v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I

    aput v3, v5, v10

    iget-object v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v9, v4

    int-to-long v3, v6

    aput-wide v3, v5, v10

    const-string v3, "Points"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    const-wide v16, 0x406fe00000000000L    # 255.0

    mul-double v5, v5, v16

    double-to-int v5, v5

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    move-object v4, v1

    move v11, v2

    mul-double v1, v18, v16

    double-to-int v1, v1

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I

    aput v1, v2, v10

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": the relative time of 4th point must be equal to duration"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v6, v2

    :goto_2
    add-int/lit8 v2, v9, 0x1

    move v3, v5

    move v5, v1

    move-object v1, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_0

    :cond_6
    move v9, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": Signal type is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    add-int/2addr v5, v6

    iput v5, v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->patternDuration:I

    const/16 v0, 0x7530

    if-le v5, v0, :cond_8

    const-string v0, "Pattern\'s duration needs less than 30000"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_4
    return-void
.end method

.method private resetParameters()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->patternDuration:I

    iput-boolean v0, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->waitResume:Z

    const/16 v1, 0x32

    iput v1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopInterval:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    iput v0, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->hedPattern:Ljava/lang/String;

    iput v0, p0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->eventNumber:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    const-class v0, [I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v3, p1

    iget v3, v3, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const-string v5, "The system doesn\'t integrate richtap software"

    const-string v6, "amplitude"

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x1

    const-string v13, "VibrationHandler"

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_3

    :pswitch_2
    const-string v0, "non-richtap"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->nonRichTap:Z

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MESSAGE_PLAY_STOPPED"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->resetParameters()V

    goto/16 :goto_3

    :pswitch_4
    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MESSAGE_PLAY_FINISHED"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->resetParameters()V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v2}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MESSAGE_LOOP_PLAY"

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->nonRichTap:Z

    if-eqz v2, :cond_6

    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->amplitudes:[I

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    move v2, v10

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    aput v10, v0, v2

    goto :goto_1

    :cond_3
    aget v3, v0, v2

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    iget v5, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v3}, Lcom/appaac/haptic/AACHapticUtils;->access$200(Lcom/appaac/haptic/AACHapticUtils;)I

    move-result v3

    const/4 v4, -0x1

    if-lt v2, v3, :cond_5

    iget-object v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v2}, Lcom/appaac/haptic/AACHapticUtils;->access$300(Lcom/appaac/haptic/AACHapticUtils;)Landroid/os/Vibrator;

    move-result-object v2

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    invoke-static {v3, v0, v4}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$300(Lcom/appaac/haptic/AACHapticUtils;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->timings:[J

    invoke-virtual {v0, v2, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2

    :cond_6
    :try_start_0
    const-class v2, Landroid/os/VibrationEffect;

    const-string v3, "createLoopPattern"

    const/16 v6, 0x8

    new-array v14, v6, [Ljava/lang/Class;

    aput-object v0, v14, v10

    aput-object v0, v14, v12

    const/4 v15, 0x2

    aput-object v0, v14, v15

    const-class v16, [Ljava/lang/String;

    aput-object v16, v14, v8

    const/16 v16, 0x4

    aput-object v0, v14, v16

    aput-object v0, v14, v11

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v14, v9

    aput-object v0, v14, v7

    invoke-virtual {v2, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->signalType:[I

    aput-object v3, v2, v10

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->startTime:[I

    aput-object v3, v2, v12

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->duration:[I

    aput-object v3, v2, v15

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->signalName:[Ljava/lang/String;

    aput-object v3, v2, v8

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->strength:[I

    aput-object v3, v2, v16

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->envelope:[I

    aput-object v3, v2, v11

    iget v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->envelopeAlgo:[I

    aput-object v3, v2, v7

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    iget-object v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v2}, Lcom/appaac/haptic/AACHapticUtils;->access$300(Lcom/appaac/haptic/AACHapticUtils;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-boolean v10, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->waitResume:Z

    iget v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    sub-int/2addr v0, v12

    iput v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After vibration loopCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    if-lez v0, :cond_8

    iget v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->patternDuration:I

    iget v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopInterval:I

    add-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v11, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :cond_8
    iget v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->patternDuration:I

    int-to-long v2, v0

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :pswitch_6
    iget-boolean v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->waitResume:Z

    if-nez v0, :cond_e

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    const-string v0, "interval"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopInterval:I

    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_UPDATE_LOOP_PARAMETERloopAmplitude:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "loopInterval:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->nonRichTap:Z

    if-nez v0, :cond_e

    :try_start_1
    const-class v0, Landroid/os/VibrationEffect;

    const-string v2, "createLoopParameter"

    new-array v3, v12, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/Object;

    iget v3, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    iget-object v1, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v1}, Lcom/appaac/haptic/AACHapticUtils;->access$300(Lcom/appaac/haptic/AACHapticUtils;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_7
    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "MESSAGE_STOP_PATTERN"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "delay"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    iget v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    if-lez v0, :cond_c

    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loopCount :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", need resume"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-boolean v12, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->waitResume:Z

    invoke-virtual {v1, v11, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_c
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :pswitch_8
    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->this$0:Lcom/appaac/haptic/AACHapticUtils;

    invoke-static {v0}, Lcom/appaac/haptic/AACHapticUtils;->access$100(Lcom/appaac/haptic/AACHapticUtils;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "MESSAGE_PLAY_PATTERN"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->resetParameters()V

    const-string v0, "pattern"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->hedPattern:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopAmplitude:I

    const-string v0, "loopCount"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->loopCount:I

    iget-object v0, v1, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->hedPattern:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;->parsePattern(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
