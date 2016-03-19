.class public final enum Libi;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Libi;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Libi;

.field private static final synthetic b:[Libi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Libi;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Libi;-><init>(Ljava/lang/String;)V

    sput-object v0, Libi;->a:Libi;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Libi;

    const/4 v1, 0x0

    sget-object v2, Libi;->a:Libi;

    aput-object v2, v0, v1

    sput-object v0, Libi;->b:[Libi;

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
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Libi;
    .locals 1

    .prologue
    .line 7
    const-class v0, Libi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Libi;

    return-object v0
.end method

.method public static values()[Libi;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Libi;->b:[Libi;

    invoke-virtual {v0}, [Libi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Libi;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Libb;

    invoke-direct {v0}, Libb;-><init>()V

    .line 7
    return-object v0
.end method
