.class public final enum Lcom/google/android/libraries/componentview/services/internal/Graft$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/componentview/services/internal/Graft$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

.field public static final enum b:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

.field private static final synthetic d:[Lcom/google/android/libraries/componentview/services/internal/Graft$Action;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    const-string v1, "SHOW"

    const-string v2, "s"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->a:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    .line 66
    new-instance v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    const-string v1, "HIDE"

    const-string v2, "h"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->b:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    sget-object v1, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->a:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->b:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->d:[Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/componentview/services/internal/Graft$Action;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/android/libraries/componentview/services/internal/Graft$Action;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->d:[Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    invoke-virtual {v0}, [Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->c:Ljava/lang/String;

    return-object v0
.end method
