.class final Lfwi;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lfmx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lfmx;

    const/4 v1, 0x0

    new-instance v2, Lfwj;

    const-string v3, "0\u0082\u0003\u00cf0\u0082\u0002\u00b7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u009a3\u0010g#<#\u00ed0"

    invoke-static {v3}, Lfmx;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lfwj;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfwk;

    const-string v3, "0\u0082\u0003\u00cf0\u0082\u0002\u00b7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00b5?Z\u00ceD\u00dc\u00d6E0"

    invoke-static {v3}, Lfmx;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lfwk;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lfwi;->a:[Lfmx;

    return-void
.end method
