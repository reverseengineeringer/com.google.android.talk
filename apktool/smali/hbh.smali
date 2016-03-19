.class public interface abstract Lhbh;
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
        "Lkhk;",
        "Lkhn;",
        "Lkho;",
        "Lkhp;",
        "Lkhq;",
        "Lkhr;",
        "Lkhs;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhbq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbq",
            "<",
            "Lkhk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lhbi;

    invoke-direct {v0}, Lhbi;-><init>()V

    sput-object v0, Lhbh;->a:Lhbq;

    return-void
.end method


# virtual methods
.method public abstract a()Lkhk;
.end method
