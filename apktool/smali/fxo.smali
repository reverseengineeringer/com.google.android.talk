.class final Lfxo;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lfmx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lfmx;

    const/4 v1, 0x0

    new-instance v2, Lfxp;

    const-string v3, "0\u0082\u0003\u00bf0\u0082\u0002\u00a7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00ba\u00c2\u0088d\u00a5MZP0"

    invoke-static {v3}, Lfmx;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lfxp;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfxq;

    const-string v3, "0\u0082\u0003\u00bf0\u0082\u0002\u00a7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c3\u00bc\u001d\u0080\u0007]\u0082\u007f0"

    invoke-static {v3}, Lfmx;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lfxq;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lfxo;->a:[Lfmx;

    return-void
.end method
