.class public abstract enum Ldtm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldtm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldtm;

.field public static final enum b:Ldtm;

.field public static final enum c:Ldtm;

.field public static final enum d:Ldtm;

.field public static final enum e:Ldtm;

.field private static final synthetic f:[Ldtm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ldtn;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1}, Ldtn;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldtm;->a:Ldtm;

    .line 30
    new-instance v0, Ldto;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1}, Ldto;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldtm;->b:Ldtm;

    .line 42
    new-instance v0, Ldtp;

    const-string v1, "LONG"

    invoke-direct {v0, v1}, Ldtp;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldtm;->c:Ldtm;

    .line 54
    new-instance v0, Ldtq;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Ldtq;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldtm;->d:Ldtm;

    .line 66
    new-instance v0, Ldtr;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1}, Ldtr;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldtm;->e:Ldtm;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Ldtm;

    const/4 v1, 0x0

    sget-object v2, Ldtm;->a:Ldtm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldtm;->b:Ldtm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ldtm;->c:Ldtm;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ldtm;->d:Ldtm;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ldtm;->e:Ldtm;

    aput-object v2, v0, v1

    sput-object v0, Ldtm;->f:[Ldtm;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldtm;
    .locals 1

    .prologue
    .line 15
    const-class v0, Ldtm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldtm;

    return-object v0
.end method

.method public static values()[Ldtm;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Ldtm;->f:[Ldtm;

    invoke-virtual {v0}, [Ldtm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldtm;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/database/Cursor;I)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/ContentValues;)V
.end method
