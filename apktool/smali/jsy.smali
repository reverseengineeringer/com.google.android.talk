.class public final enum Ljsy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljsy;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Ljsy;

.field private static final synthetic b:[Ljsy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljsy;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Ljsy;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljsy;->a:Ljsy;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Ljsy;

    const/4 v1, 0x0

    sget-object v2, Ljsy;->a:Ljsy;

    aput-object v2, v0, v1

    sput-object v0, Ljsy;->b:[Ljsy;

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
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljsy;
    .locals 1

    .prologue
    .line 8
    const-class v0, Ljsy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljsy;

    return-object v0
.end method

.method public static values()[Ljsy;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Ljsy;->b:[Ljsy;

    invoke-virtual {v0}, [Ljsy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljsy;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1014
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 8
    return-object v0
.end method
