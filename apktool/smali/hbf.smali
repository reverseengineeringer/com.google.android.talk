.class public interface abstract Lhbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbm",
        "<",
        "Lkhf;",
        "Lkhg;",
        "Lkhh;",
        "Lkhi;",
        "Lkhj;",
        "Lkhx;",
        "Lkhy;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhbq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbq",
            "<",
            "Lkhf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lhbg;

    invoke-direct {v0}, Lhbg;-><init>()V

    sput-object v0, Lhbf;->a:Lhbq;

    return-void
.end method


# virtual methods
.method public abstract a()Lkhf;
.end method
