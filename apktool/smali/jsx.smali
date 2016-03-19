.class public final enum Ljsx;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljsx;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Ljsx;

.field private static final synthetic b:[Ljsx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljsx;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Ljsx;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljsx;->a:Ljsx;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljsx;

    const/4 v1, 0x0

    sget-object v2, Ljsx;->a:Ljsx;

    aput-object v2, v0, v1

    sput-object v0, Ljsx;->b:[Ljsx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljsx;
    .locals 1

    .prologue
    .line 9
    const-class v0, Ljsx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljsx;

    return-object v0
.end method

.method public static values()[Ljsx;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Ljsx;->b:[Ljsx;

    invoke-virtual {v0}, [Ljsx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljsx;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2017
    new-instance v0, Ljsw;

    invoke-direct {v0}, Ljsw;-><init>()V

    .line 1016
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 9
    return-object v0
.end method
