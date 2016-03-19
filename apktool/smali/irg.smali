.class public interface abstract Lirg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lirg;

.field public static final b:Lirg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lirh;

    invoke-direct {v0}, Lirh;-><init>()V

    sput-object v0, Lirg;->a:Lirg;

    .line 70
    new-instance v0, Liri;

    invoke-direct {v0}, Liri;-><init>()V

    sput-object v0, Lirg;->b:Lirg;

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method
