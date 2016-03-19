.class public interface abstract Laou;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Laou;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Laou;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Laov;

    invoke-direct {v0}, Laov;-><init>()V

    sput-object v0, Laou;->a:Laou;

    .line 30
    new-instance v0, Laoy;

    invoke-direct {v0}, Laoy;-><init>()V

    invoke-virtual {v0}, Laoy;->a()Laox;

    move-result-object v0

    sput-object v0, Laou;->b:Laou;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
