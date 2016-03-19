.class public enum Lipl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lipl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lipl;

.field public static final enum b:Lipl;

.field public static final enum c:Lipl;

.field public static final enum d:Lipl;

.field public static final enum e:Lipl;

.field private static final synthetic g:[Lipl;


# instance fields
.field f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lipm;

    const-string v1, "TERABYTES"

    invoke-direct {v0, v1}, Lipm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lipl;->a:Lipl;

    .line 16
    new-instance v0, Lipn;

    const-string v1, "GIGABYTES"

    invoke-direct {v0, v1}, Lipn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lipl;->b:Lipl;

    .line 22
    new-instance v0, Lipo;

    const-string v1, "MEGABYTES"

    invoke-direct {v0, v1}, Lipo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lipl;->c:Lipl;

    .line 28
    new-instance v0, Lipp;

    const-string v1, "KILOBYTES"

    invoke-direct {v0, v1}, Lipp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lipl;->d:Lipl;

    .line 34
    new-instance v0, Lipq;

    const-string v1, "BYTES"

    invoke-direct {v0, v1}, Lipq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lipl;->e:Lipl;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lipl;

    const/4 v1, 0x0

    sget-object v2, Lipl;->a:Lipl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lipl;->b:Lipl;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lipl;->c:Lipl;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lipl;->d:Lipl;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lipl;->e:Lipl;

    aput-object v2, v0, v1

    sput-object v0, Lipl;->g:[Lipl;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-wide p3, p0, Lipl;->f:J

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lipl;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lipl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lipl;

    return-object v0
.end method

.method public static values()[Lipl;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lipl;->g:[Lipl;

    invoke-virtual {v0}, [Lipl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lipl;

    return-object v0
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 53
    iget-wide v0, p0, Lipl;->f:J

    mul-long/2addr v0, p1

    return-wide v0
.end method
