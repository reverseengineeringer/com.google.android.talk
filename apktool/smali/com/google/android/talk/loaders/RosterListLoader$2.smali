.class synthetic Lcom/google/android/talk/loaders/RosterListLoader$2;
.super Ljava/lang/Object;
.source "RosterListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/loaders/RosterListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

.field static final synthetic $SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->values()[Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    :try_start_0
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 157
    :goto_2
    invoke-static {}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->values()[Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    :try_start_3
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 187
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
