.class final Lfvj;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lfmx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lfmx;

    const/4 v1, 0x0

    new-instance v2, Lfvk;

    const-string v3, "0\u0082\u0003\u00ef0\u0082\u0002\u00d7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00e3\u00d3\u00c6\u00d8x\u008a\u00c9\u00f90"

    invoke-static {v3}, Lfmx;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lfvk;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfvl;

    const-string v3, "0\u0082\u0003\u00ef0\u0082\u0002\u00d7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u008c\u00c9F\u00f0\u00a1\u000e1a0"

    invoke-static {v3}, Lfmx;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lfvl;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lfvj;->a:[Lfmx;

    return-void
.end method
